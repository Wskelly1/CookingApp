import React from 'react';
import { View, Text, StyleSheet } from 'react-native';

const SampleComponent: React.FC = () => {
  return (
    <View style={styles.container}>
      <Text style={styles.text}>Hello from SampleComponent! 🎉</Text>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    padding: 16,
    backgroundColor: '#f0f0f0',
    borderRadius: 8,
    margin: 16,
    alignItems: 'center',
  },
  text: {
    fontSize: 18,
    color: '#333',
  },
});

export default SampleComponent; 